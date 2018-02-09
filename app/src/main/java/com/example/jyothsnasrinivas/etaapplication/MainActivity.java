package com.example.jyothsnasrinivas.etaapplication;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.example.Test;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Test.displayToast(getApplicationContext(), "Yo from Eta!");
    }
}
