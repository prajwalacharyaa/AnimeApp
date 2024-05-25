package com.binod.online_news;

import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.util.Log;
import android.view.View;
import android.support.v4.view.GravityCompat;
import android.support.v7.app.ActionBarDrawerToggle;
import android.view.MenuItem;
import android.support.design.widget.NavigationView;
import android.support.v4.widget.DrawerLayout;

import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.MobileAds;

import java.io.File;

public class MainActivity extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener {

    private static final long GAME_LENGTH_MILLISECONDS = 3000;
    private static final String TAG = "MainActivity";


    private AdView adView;
    private AdView adView1;
    private AdView adView2;
    private AdView adView3;
    private AdView adView4;
    private AdView adView5;
    private AdView adView6;
    private AdView adView7;
    private AdView adView8;
    private AdView adView9;



    private InterstitialAd interstitialAd;
    private InterstitialAd interstitialAd1;
    private InterstitialAd interstitialAd2;
    private InterstitialAd interstitialAd3;
    private InterstitialAd interstitialAd4;

    private Button retryButton;
    private Button cleardata;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize the Mobile Ads SDK.
        MobileAds.initialize(this, "ca-app-pub-4832438752709537~6320182065");

        // Create the InterstitialAd and set the adUnitId.
        interstitialAd = new InterstitialAd(this);
        interstitialAd1 = new InterstitialAd(this);
        interstitialAd2 = new InterstitialAd(this);
        interstitialAd3 = new InterstitialAd(this);
        interstitialAd4 = new InterstitialAd(this);

        // Defined in res/values/strings.xml
        interstitialAd.setAdUnitId(getString(R.string.ad_unit_id));
        interstitialAd1.setAdUnitId(getString(R.string.ad_unit_id1));
        interstitialAd2.setAdUnitId(getString(R.string.ad_unit_id2));
        interstitialAd3.setAdUnitId(getString(R.string.ad_unit_id3));
        interstitialAd4.setAdUnitId(getString(R.string.ad_unit_id4));

        //put the interestital ads to load
        interstitialAd.loadAd(new AdRequest.Builder().build());
        interstitialAd1.loadAd(new AdRequest.Builder().build());
        interstitialAd2.loadAd(new AdRequest.Builder().build());
        interstitialAd3.loadAd(new AdRequest.Builder().build());
        interstitialAd4.loadAd(new AdRequest.Builder().build());

        interstitialAd.setAdListener(new AdListener() {
            @Override
            public void onAdLoaded() {
                Toast.makeText(MainActivity.this, "Best Ads Are Loaded For You", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onAdFailedToLoad(int errorCode) {
                Toast.makeText(MainActivity.this,
                        "onAdFailedToLoad() with error code: " + errorCode,
                        Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onAdClosed() {
                interstitialAd.loadAd(new AdRequest.Builder().build());
            }
        });
        interstitialAd1.setAdListener(new AdListener() {
            @Override
            public void onAdLoaded() {
                Toast.makeText(MainActivity.this, "1Best Ads Are Loaded For You", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onAdFailedToLoad(int errorCode) {
                Toast.makeText(MainActivity.this,
                        "onAdFailedToLoad1() with error code: " + errorCode,
                        Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onAdClosed() {
                interstitialAd1.loadAd(new AdRequest.Builder().build());
            }
        });
        interstitialAd2.setAdListener(new AdListener() {
            @Override
            public void onAdLoaded() {
                Toast.makeText(MainActivity.this, "2Best Ads Are Loaded For You", Toast.LENGTH_SHORT).show();

            }

            @Override
            public void onAdFailedToLoad(int errorCode) {
                Toast.makeText(MainActivity.this,
                        "onAdFailedToLoad2() with error code: " + errorCode,
                        Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onAdClosed() {
                interstitialAd2.loadAd(new AdRequest.Builder().build());
          