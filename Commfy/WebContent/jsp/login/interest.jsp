<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
/// Mixin to place items on a circle
/// @author Hugo Giraudel
/// @author Ana Tudor
/// @param {Integer} $item-count - Number of items on the circle
/// @param {Length} $circle-size - Large circle size
/// @param {Length} $item-size - Single item size
@mixin on-circle($item-count, $circle-size, $item-size) {
  position: relative;
  min-height: $circle-size + ($item-size);
  .panel-heading {
    position: absolute;
    width: $circle-size;
    height: $circle-size;
    padding: 0;
    border-radius: 50%;
    top: ($item-size / 2);
    right: ($item-size / 2);
    > * {
      display: block;
      position: absolute;
      top: 50%;
      left: 50%;
      width: $item-size;
      height: $item-size;
      margin: -($item-size / 2);
      z-index: 500;
    }
  }
  $angle: (360 / $item-count);
  $rot: -30;
  @for $i from 1 through $item-count {
    >:nth-of-type(#{$i}) {
      .panel-heading {
        > * {
          transform: rotate($rot * 1deg) translate($circle-size / 2) rotate($rot * -1deg);
          a {
            background-image: url('http://addedsmile.com/wp-content/themes/addedsmile/assets/images/approach-icon-#{$i}.png');
          }
        }
      }
    }
    $rot: $rot + $angle;
  }
}


variables
$brand-color: #009fe3 !default;
// base
html { font-size: 10px;}
body {
    font-family: Ubuntu,Helvetica Neue,Helvetica,Arial,sans-serif;
    font-size: 16px;
    line-height: 1.42857;
    color: #555;
    background-color: #fff;
}
// overwrite bootstrap
.panel {
  border: none;
}
.panel-body {
  border: none !important;
  padding: 0;
}
.panel-default {
    >.panel-heading {
    background-color: transparent;
  }
}
/*--------------------------------------------------------------
## Scheme
--------------------------------------------------------------*/
.approach-scheme {
    padding: 2rem 0;

    .container {
        .approach-scheme-title {
            color: $brand-color;
            > * {
                margin-bottom: 3rem;
            }
        }
    }

    #scheme {
        .panel-heading {           

            > * {
                font-size: 20px;
                a {
                    background-color: $brand-color;
                    color: #ffffff;
                    display: block;
                    margin-left: 2rem;
                    text-decoration: none;                  

                    .panel-title-tag {
                        background: #fff;
                        border: 2px solid $brand-color;
                        border-radius: 50%;
                        color: $brand-color;
                        font-weight: 700;
                        float: left;
                        width: 46px;
                        height: 46px;
                        line-height: 2.125;
                        text-align: center;
                        margin: -1rem 1rem 0 -2rem;
                    }
                    &.collapsed {
                        background-color: #dadada;
                        .panel-title-tag {
                            border: 2px solid #dadada;
                            color: #dadada;
                        }
                    }
                }
            }
        }
        .panel {
            padding-bottom: 2rem;
            .panel-collapse {
                &.in {
                    padding-left: 5.5rem;
                }
            }
            
        }
    }
    @media (min-width: 1024px) {
        #scheme {
            
            @include on-circle($item-count: 6, $circle-size: 47rem, $item-size: 14rem); 
            
            .panel-heading {
                background-image: url('http://addedsmile.com/wp-content/themes/addedsmile/assets/images/scheme-bg.png');
                background-repeat: no-repeat;
                background-position: 50%;
                background-color: #fff;
                border: 4px solid #dadada;

                > * {
                    border-radius: 50%;
                    font-size: 18px;
                    text-align: center;

                    a {
                        background-color: $brand-color;
                        background-position: 50% 25%;
                        background-repeat: no-repeat;
                        border-radius: 50%;
                        color: #ffffff;
                        display: block;
                        line-height: 1;
                        margin: 0;
                        position: absolute;
                        padding: 50% 10% 0;
                        top: 0;
                        left: 0;
                        height: 100%;
                        width: 100%;
                        transition: all 0.5s ease-in;
                        .panel-title-tag {
                            background: #fff;
                            border: 2px solid $brand-color;
                            border-radius: 50%;
                            color: $brand-color;
                            font-weight: 700;
                            float: none;
                            width: 46px;
                            height: 46px;
                            line-height: 2.25;
                            position: absolute;
                            text-align: center;
                            left: 50%;
                            margin: -23px 0 0 -23px;
                            z-index: 9;
                            transform: rotate(230deg) translate(4em) rotate(-230deg);
                        }

                        &:before {
                          content: " ";
                          position: absolute;
                          z-index: 1;
                          top: 2px;
                          left: 2px;
                          right: 2px;
                          bottom: 2px;
                          border: 7px solid #ffffff;
                          border-radius: 50%;
                        }

                        &:hover,&:focus {
                            text-decoration: none;
                        }

                        &.collapsed {
                            background-color: #dadada;

                            .panel-title-tag {
                                border-color: #dadada;
                                color: #dadada;
                                transition: all 0.5s ease-in;

                                .fa {
                                    font-size: 2em;
                                    line-height: 1.2;
                                    padding-left: 5px;
                                }
                            }

                            &:hover {
                                background-color: $brand-color;

                                .panel-title-tag {
                                    border-color: $brand-color;
                                    color: $brand-color;
                                }
                            }
                        } 
                    }
                                       
                }
            }
            .panel-collapse {
                color: #ffffff;
                position: absolute;
                left: 8%;
                top: 45%;
                width: 30%;
                &.in {
                    padding-left: 0 !important;
                }
                
             }
            .panel {
                padding: 0;
            }
        }
        .container {
            position: relative;

            .approach-scheme-title {
                background-color: $brand-color;
                border-radius: 50%;
                color: #ffffff;
                height: 50rem;
                width: 50rem;
                position: absolute;
                left: 15px;
                top: 7rem;

                > * {
                    position: relative;
                    top: 20%;
                    left: 20%;
                    width: 60%;

                    &:after {
                        border-width: 0 0 1px 0;
                        border-style: solid;
                        border-color: inherit;
                        content: '';
                        display: block;
                        margin-top: 2rem;
                        width: 60%;
                    }
                }
            }
            @media (max-width: 1199px) {
                width: 100% !important;
            }
        }

    }  
}
</style>
<link rel="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
<link rel="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="approach-scheme">
  <div class="container">
    <div class="approach-scheme-title">
      <div class="h3">The five A’s of Added Smile Approach.</div>
    </div>
    <div class="panel-group" id="scheme" role="tablist" aria-multiselectable="true">
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
          <div class="panel-title">
            <a role="button" data-toggle="collapse" data-parent="#scheme" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
              <div class="panel-title-tag">1.</div>Acceptance</a>
          </div>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
          <div class="panel-body">
            <div class="h3">1. Acceptance</div>
            <ul>
              <li>Get to know you and what you need</li>
              <li>Define expectations</li>
              <li>Agree next steps &amp; importantly deadlines</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingTwo">
          <div class="panel-title">
            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#scheme" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
              <div class="panel-title-tag">2.</div>Appraisal</a>
          </div>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
          <div class="panel-body">
            <div class="h3">2. Appraisal</div>
            <ul>
              <li>We reflect on your challenge</li>
              <li>Research external</li>
              <li>Review internal</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingThree">
          <div class="panel-title">
            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#scheme" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
              <div class="panel-title-tag">3.</div>Analysis</a>
          </div>
        </div>
        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
          <div class="panel-body">
            <div class="h3">3. Analysis</div>
            <ul>
              <li>Consolidate available data</li>
              <li>Perform analysis</li>
              <li>Define the model</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingFour">
          <div class="panel-title">
            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#scheme" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
              <div class="panel-title-tag">4.</div>Assessment</a>
          </div>
        </div>
        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
          <div class="panel-body">
            <div class="h3">4. Assessment</div>
            <ul>
              <li>Test the proposal</li>
              <li>Absorb the feedback</li>
              <li>Test again</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingFive">
          <div class="panel-title">
            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#scheme" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
              <div class="panel-title-tag">5.</div>Application</a>
          </div>
        </div>
        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
          <div class="panel-body">
            <div class="h3">5. Application</div>
            <ul>
              <li>Submit proposal</li>
              <li>Embed proposal</li>
              <li>Agree audit &amp; review</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingsSix">
          <div class="panel-title">
            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#scheme" href="#collapsesSix" aria-expanded="false" aria-controls="collapsesSix">
              <div class="panel-title-tag"><i class="fa fa-caret-right" aria-hidden="true"></i></div><span>Client Enquiry</span></a>
          </div>
        </div>
        <div id="collapsesSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingsSix">
          <div class="panel-body">
            <div class="h3">Client Enquiry</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<footer>
  <div class="container">
    <p>2017 Feb - For project <a href="http://addedsmile.com/what-we-do/">AddedSmile</a></p>
  </div>
</footer>
</body>
</html>