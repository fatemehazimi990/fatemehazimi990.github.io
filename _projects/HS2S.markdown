---
layout:
title:
description:
img: ./assets/img/teaser.png
importance: 4
---

<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript">google.load("jquery", "1.3.2");</script>

<style type="text/css">
	body {
		font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
		font-weight:300;
		font-size:18px;
		margin-left: auto;
		margin-right: auto;
		width: 1100px;
	}

	h1 {
		font-size:32px;
		font-weight:300;
	}

	.disclaimerbox {
		background-color: #eee;
		border: 1px solid #eeeeee;
		border-radius: 10px ;
		-moz-border-radius: 10px ;
		-webkit-border-radius: 10px ;
		padding: 20px;
	}

	video.header-vid {
		height: 140px;
		border: 1px solid black;
		border-radius: 10px ;
		-moz-border-radius: 10px ;
		-webkit-border-radius: 10px ;
	}

	img.header-img {
		height: 140px;
		border: 1px solid black;
		border-radius: 10px ;
		-moz-border-radius: 10px ;
		-webkit-border-radius: 10px ;
	}

	img.rounded {
		border: 1px solid #eeeeee;
		border-radius: 10px ;
		-moz-border-radius: 10px ;
		-webkit-border-radius: 10px ;
	}

	a:link,a:visited
	{
		color: #1367a7;
		text-decoration: none;
	}
	a:hover {
		color: #208799;
	}

	td.dl-link {
		height: 160px;
		text-align: center;
		font-size: 22px;
	}

	.layered-paper-big { /* modified from: http://css-tricks.com/snippets/css/layered-paper/ */
		box-shadow:
		        0px 0px 1px 1px rgba(0,0,0,0.35), /* The top layer shadow */
		        5px 5px 0 0px #fff, /* The second layer */
		        5px 5px 1px 1px rgba(0,0,0,0.35), /* The second layer shadow */
		        10px 10px 0 0px #fff, /* The third layer */
		        10px 10px 1px 1px rgba(0,0,0,0.35), /* The third layer shadow */
		        15px 15px 0 0px #fff, /* The fourth layer */
		        15px 15px 1px 1px rgba(0,0,0,0.35), /* The fourth layer shadow */
		        20px 20px 0 0px #fff, /* The fifth layer */
		        20px 20px 1px 1px rgba(0,0,0,0.35), /* The fifth layer shadow */
		        25px 25px 0 0px #fff, /* The fifth layer */
		        25px 25px 1px 1px rgba(0,0,0,0.35); /* The fifth layer shadow */
		margin-left: 10px;
		margin-right: 45px;
	}

	.paper-big { /* modified from: http://css-tricks.com/snippets/css/layered-paper/ */
		box-shadow:
		        0px 0px 1px 1px rgba(0,0,0,0.35); /* The top layer shadow */

		margin-left: 10px;
		margin-right: 45px;
	}


	.layered-paper { /* modified from: http://css-tricks.com/snippets/css/layered-paper/ */
		box-shadow:
		        0px 0px 1px 1px rgba(0,0,0,0.35), /* The top layer shadow */
		        5px 5px 0 0px #fff, /* The second layer */
		        5px 5px 1px 1px rgba(0,0,0,0.35), /* The second layer shadow */
		        10px 10px 0 0px #fff, /* The third layer */
		        10px 10px 1px 1px rgba(0,0,0,0.35); /* The third layer shadow */
		margin-top: 5px;
		margin-left: 10px;
		margin-right: 30px;
		margin-bottom: 5px;
	}

	.vert-cent {
		position: relative;
	    top: 50%;
	    transform: translateY(-50%);
	}

	hr
	{
		border: 0;
		height: 1px;
		background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
	}
</style>

<html>
	<head>
		<title>Hybrid S2S-1</title>
		<meta property="og:title" content="Hybrid S2S" />
		<meta property="og:description" content="Azimi et al. 2020" />
  </head>

  <body>
    <br>
          <center>
          	<span style="font-size:36px"> Hybrid-S2S: Video Object Segmentation with Recurrent Networks and Correspondence Matching </span>
	  		  <table align=center width=900px>
						<tr><td><br/></td></tr>
	  			  <tr>
	  	              <td align=center width=200px>
	  					<center>
							<span style="font-size:20px"><a href="http://fatemeh.github.io/">Fatemeh Azimi<sup>1,2</sup> </a> </span>
		  		  		</center>
		  		  	  </td>
	  	          <td align=center width=200px>
	  					<center>
							<span style="font-size:20px"><a href="https://stanifrolov.github.io/">Stanislav Frolov<sup>1,2</sup></a></span>
		  		  		</center>
		  		  	  </td>
	  	              <td align=center width=150px>
	  					<center>
							<span style="font-size:20px"><a href="http://rave78.com/">Federico Raue<sup>2</sup></a></span>
		  		  		</center>
		  		  	  </td>
	  	              <td align=center width=150px>
	  					<center>
	  						<span style="font-size:20px"><a href="http://joernhees.de/blog/">Joern Hees<sup>2</sup></a></span>
		  		  		</center>
		  		  	  </td>
								<td align=center width=200px>
							<center>
								<span style="font-size:20px"><a href="http://www.dfki.uni-kl.de/~dengel/">Andreas Dengel<sup>1,2</sup></a></span>
								</center>
								</td>
		  		  </tr>
			  </table>

				<table align=center width=400px>
				<tr>
				<td align=center width=200px> <sup>1</sup> TU Kaiserslautern</td>
				<td align=center width=200px> <sup>2</sup> DFKI Kaiserslautern</td>
				</tr>
				</table>
    </center>
		  <br>


	<hr>
				<table align="center" width=850px>
					<center> Accepted at WiML-NeurIPS-2020 </center>
				</table>

  		  <table align=center width=850px>
	  		  <center><h1>Abstract</h1></center>
	  		  <tr>
	  		  	<td>
							<div align="justify">
							One-shot Video Object Segmentation~(VOS) is the task of pixel-wise tracking an object of interest within a video sequence, where the segmentation mask of the first frame is given at inference time.
							In recent years, Recurrent Neural Networks~(RNNs) have been widely used for VOS tasks, but they often suffer from limitations such as drift and error propagation.
							In this work, we study an RNN-based architecture and address some of these issues by proposing a hybrid sequence-to-sequence architecture named HS2S, utilizing a dual mask propagation strategy that allows incorporating the information obtained from correspondence matching.
							Our experiments show that augmenting the RNN with correspondence matching is a highly effective solution to reduce the drift problem.
							The additional information helps the model to predict more accurate masks and makes it robust against error propagation.
							We evaluate our HS2S model on the DAVIS2017 dataset as well as Youtube-VOS.
							On the latter, we achieve an improvement of 11.2pp in the overall segmentation accuracy over RNN-based state-of-the-art methods in VOS.
							We analyze our model's behavior in challenging cases such as occlusion and long sequences and show that our hybrid architecture significantly enhances the segmentation quality in these difficult scenarios

							</div>
	  		    </td>
	  		  </tr>
			</table>

			<hr>

	  	<table align=center width=750px>
					<tr><td> <center><h1>Method Overview</h1></center> </td></tr>
					<tr>
						<td align="justify">In this figure,  we depict the overall architecture of S2S [1] and our HS2S method.
						  In HS2S, we initialize the RNN hidden states with zeros, instead of using the initializer network.
							We keep track of the target object by feeding the previous segmentation mask to the encoder as an additional input channel.  Furthermore, we use a separate reference encoder to process the input to the matching branch.
							The hidden state of the RNN is combined with the encoded features from the matching branch via a merge layer and passed to the decoder to predict the segmentation mask.</td>
		      </tr>
					<tr>
							<center>
								<img class="round" style="width:700px" src="/assets/img/HS2S.png"/>
							</center>
					</tr>
			</table>

<center><h1>Supplementary Video</h1></center>
				<p align="center">
				<iframe width="660" height="390" src="https://www.youtube.com/embed/UrZTMVo4EGQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>




<center><h1>Poster <a href="https://drive.google.com/file/d/10SpTMQMviXrV136AEjmP9NkYV5KW9KBO/view?usp=sharing">(link)</a> </h1></center>

<tr>
		<center>
			<img class="round" style="width:800px" src="/assets/img/HS2S.pptx.png" />
		</center>
</tr>

<center><h1>Visual Samples from YouTube-VOS Dataset</h1></center>

<tr>
		<center>
			<img class="round" style="width:500px" src="/assets/img/movie_1.gif" />
		</center>
</tr>
<br>

<tr>
		<center>
			<img class="round" style="width:500px" src="/assets/img/movie_2.gif" />
		</center>
</tr>
<br>

<tr>
		<center>
			<img class="round" style="width:500px" src="/assets/img/movie_3.gif" />
		</center>
</tr>

<br>
<tr>
		<center>
			<img class="round" style="width:500px" src="/assets/img/movie_4.gif" />
		</center>
</tr>

		<div>
			<br>
				<table align=center width=900px>
					<tr> <td> <center> <span style="font-size:24pt"> Acknowledgments </span> </center> </td> </tr>
					<tr>
						<td align="justify">This work was supported by the TU Kaiserslautern CS PhD scholarship program, the BMBF project ExplAINN (01IS19074), and the NVIDIA AI Lab (NVAIL) program.
						Further, we thank all members of the Deep Learning Competence Center at the DFKI for their feedback and support. </td>
		      </tr>
				</table>
		</div>


		<table align=center width=900px>
			<tr> <td> <span style="font-size:24pt"> References </span> </td> </tr>
			<tr> <td> [1] YouTube-VOS: <em>Sequence-to-Sequence Video Object Segmentation</em>, Xu et al. <a href="https://openaccess.thecvf.com/content_ECCV_2018/papers/Ning_Xu_YouTube-VOS_Sequence-to-Sequence_Video_ECCV_2018_paper.pdf">link</a></td> </tr>
		</table> <!-- -->



</body>
</html>