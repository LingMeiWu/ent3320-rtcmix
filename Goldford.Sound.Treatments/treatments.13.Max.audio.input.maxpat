{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 40.0, 90.0, 957.0, 912.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 45.400000234444938,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "C:/Users/super/Downloads/test.samples/test.samples/music/orchestral-beethoven-coriolan-overture-30s.wav",
								"filename" : "orchestral-beethoven-coriolan-overture-30s.wav",
								"filekind" : "audiofile",
								"id" : "u234000407",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "C:/Users/super/Downloads/test.samples/test.samples/music/piano-schubert-sonata-Dmin-i-moderato-1min.wav",
								"filename" : "piano-schubert-sonata-Dmin-i-moderato-1min.wav",
								"filekind" : "audiofile",
								"id" : "u322000410",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
, 							{
								"absolutepath" : "C:/Users/super/Downloads/test.samples/test.samples/noisy/concrete-drilling-32s.wav",
								"filename" : "concrete-drilling-32s.wav",
								"filekind" : "audiofile",
								"id" : "u533000413",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-3",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 299.200004458427429, 55.200000822544098, 282.800001978874207, 139.200000703334808 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 29.5, 336.400000035762787, 131.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "rtcmix",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "rtcmix",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "rtcmix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 29.5, 55.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 31.5, 433.800000011920929, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"fontsize" : 28.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 29.5, 243.571428571428555, 123.0, 41.0 ],
					"save" : [ "#N", "rtcmix~", 2, 0, ";", "#X", "restore", 0, 1311, 1311, "// We can alternatively process live a input audio stream coming directly from max.\r\n// Instead of a path to an audio file, we can specify:\r\n\r\nrtinput(\"AUDIO\")\r\n\r\n// We use bus_config() like a mixing board; to connect the soundfile -> MOOGVCF -> REVERBIT -> outlets in Max patch.\r\n\r\nbus_config(\"MOOGVCF\", \"in 0-1\", \"aux 0-1 out\")\r\n\t// \"0-1\" input from sound file (rtinput)\r\n\t// \"aux 0-1 out\" auxiliary \"audio busses\" allowing us to connect RTcmix instruments\r\nbus_config(\"REVERBIT\", \"aux 0-1 in\", \"out 0-1\")\r\n\t// \"aux 0-1 in\" received input from MOOGVCF\r\n\t// \"out 0-1\" output to the Max object's outlets (in out outside patch)\r\n\r\nfreq = maketable(\"line\", \"nonorm\", 1000, 0,2000, 25,200, 50,500, 100,1100)\r\n\r\n// Syntax for the MOOGVCF Instrument:\r\n// MOOGVCF(outsk=0.0, insk=0.0, dur=9999, amp=1.0, inputchan=0.0, pan=0.5, bypass=0, freq, filtresontable=0.9)\r\n\r\nMOOGVCF(outsk=0.0, insk=0.0, dur=9999, amp=1.0, inputchan=0.0, pan=0.5, bypass=0, freq, filtresontable=0.9)\r\n\r\n// ...increased dur to 9999 here as well; to allow for indefinite real-time processing\r\n\r\n// Syntax for the REVERBIT Instrument:\r\n// REVERBIT(outsk, insk, dur, AMP, RVBTIME, RVBAMT, chan0delay, FILTFREQ[, dcblock, ringdowndur])\r\n\r\nREVERBIT(outskip=0.0, inskip=0.0, dur=9999, amp=1.0, revtime=2.6, revpct=0.4, rtchandel=0.02, cutoff=5000.0)", ";" ],
					"text" : "rtcmix~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 641.0, 55.0, 150.0, 20.0 ],
					"text" : "<playlist~>"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 406.0, 243.571428571428555, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 406.0, 313.0, 78.0, 36.0 ],
					"text" : ";\r\ndsp sr 48000"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.5, 341.5, 78.0, 20.0 ],
					"text" : "<live.gain~>",
					"textcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 68.5, 55.0, 199.0, 20.0 ],
					"text" : "<= bang to hear your beautiful note!",
					"textcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-17",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 179.5, 243.571428571428555, 156.0, 48.0 ],
					"text" : "<= Lock patch (cmd. + E), double-click the rtcmix~ object to open & see script.",
					"textcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 20.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.5, 9.0, 605.0, 29.0 ],
					"text" : "13. Using Audio Input from Max"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-11",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 68.5, 84.071428571428555, 156.0, 75.0 ],
					"text" : "Unlock patch (cmd. + E), then option-click on the rtcmix~ object for documentation (i.e. to see its .maxhelp file).",
					"textcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10" : [ "rtcmix", "rtcmix", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "orchestral-beethoven-coriolan-overture-30s.wav",
				"bootpath" : "~/Downloads/test.samples/test.samples/music",
				"patcherrelativepath" : "../../../../test.samples/test.samples/music",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "piano-schubert-sonata-Dmin-i-moderato-1min.wav",
				"bootpath" : "~/Downloads/test.samples/test.samples/music",
				"patcherrelativepath" : "../../../../test.samples/test.samples/music",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "concrete-drilling-32s.wav",
				"bootpath" : "~/Downloads/test.samples/test.samples/noisy",
				"patcherrelativepath" : "../../../../test.samples/test.samples/noisy",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "rtcmix~.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "ksliderWhite",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "messageBlue",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.660494,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjCyan-1",
				"default" : 				{
					"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjRed-1",
				"default" : 				{
					"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
