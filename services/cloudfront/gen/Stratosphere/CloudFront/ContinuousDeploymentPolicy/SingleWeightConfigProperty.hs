module Stratosphere.CloudFront.ContinuousDeploymentPolicy.SingleWeightConfigProperty (
        module Exports, SingleWeightConfigProperty(..),
        mkSingleWeightConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.SessionStickinessConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleWeightConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleweightconfig.html>
    SingleWeightConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleweightconfig.html#cfn-cloudfront-continuousdeploymentpolicy-singleweightconfig-sessionstickinessconfig>
                                sessionStickinessConfig :: (Prelude.Maybe SessionStickinessConfigProperty),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleweightconfig.html#cfn-cloudfront-continuousdeploymentpolicy-singleweightconfig-weight>
                                weight :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleWeightConfigProperty ::
  Value Prelude.Double -> SingleWeightConfigProperty
mkSingleWeightConfigProperty weight
  = SingleWeightConfigProperty
      {weight = weight, sessionStickinessConfig = Prelude.Nothing}
instance ToResourceProperties SingleWeightConfigProperty where
  toResourceProperties SingleWeightConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ContinuousDeploymentPolicy.SingleWeightConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Weight" JSON..= weight]
                           (Prelude.catMaybes
                              [(JSON..=) "SessionStickinessConfig"
                                 Prelude.<$> sessionStickinessConfig]))}
instance JSON.ToJSON SingleWeightConfigProperty where
  toJSON SingleWeightConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Weight" JSON..= weight]
              (Prelude.catMaybes
                 [(JSON..=) "SessionStickinessConfig"
                    Prelude.<$> sessionStickinessConfig])))
instance Property "SessionStickinessConfig" SingleWeightConfigProperty where
  type PropertyType "SessionStickinessConfig" SingleWeightConfigProperty = SessionStickinessConfigProperty
  set newValue SingleWeightConfigProperty {..}
    = SingleWeightConfigProperty
        {sessionStickinessConfig = Prelude.pure newValue, ..}
instance Property "Weight" SingleWeightConfigProperty where
  type PropertyType "Weight" SingleWeightConfigProperty = Value Prelude.Double
  set newValue SingleWeightConfigProperty {..}
    = SingleWeightConfigProperty {weight = newValue, ..}