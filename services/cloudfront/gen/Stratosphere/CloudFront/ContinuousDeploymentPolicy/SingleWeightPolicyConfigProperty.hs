module Stratosphere.CloudFront.ContinuousDeploymentPolicy.SingleWeightPolicyConfigProperty (
        module Exports, SingleWeightPolicyConfigProperty(..),
        mkSingleWeightPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.SessionStickinessConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleWeightPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleweightpolicyconfig.html>
    SingleWeightPolicyConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleweightpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-singleweightpolicyconfig-sessionstickinessconfig>
                                      sessionStickinessConfig :: (Prelude.Maybe SessionStickinessConfigProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleweightpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-singleweightpolicyconfig-weight>
                                      weight :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleWeightPolicyConfigProperty ::
  Value Prelude.Double -> SingleWeightPolicyConfigProperty
mkSingleWeightPolicyConfigProperty weight
  = SingleWeightPolicyConfigProperty
      {haddock_workaround_ = (), weight = weight,
       sessionStickinessConfig = Prelude.Nothing}
instance ToResourceProperties SingleWeightPolicyConfigProperty where
  toResourceProperties SingleWeightPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ContinuousDeploymentPolicy.SingleWeightPolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Weight" JSON..= weight]
                           (Prelude.catMaybes
                              [(JSON..=) "SessionStickinessConfig"
                                 Prelude.<$> sessionStickinessConfig]))}
instance JSON.ToJSON SingleWeightPolicyConfigProperty where
  toJSON SingleWeightPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Weight" JSON..= weight]
              (Prelude.catMaybes
                 [(JSON..=) "SessionStickinessConfig"
                    Prelude.<$> sessionStickinessConfig])))
instance Property "SessionStickinessConfig" SingleWeightPolicyConfigProperty where
  type PropertyType "SessionStickinessConfig" SingleWeightPolicyConfigProperty = SessionStickinessConfigProperty
  set newValue SingleWeightPolicyConfigProperty {..}
    = SingleWeightPolicyConfigProperty
        {sessionStickinessConfig = Prelude.pure newValue, ..}
instance Property "Weight" SingleWeightPolicyConfigProperty where
  type PropertyType "Weight" SingleWeightPolicyConfigProperty = Value Prelude.Double
  set newValue SingleWeightPolicyConfigProperty {..}
    = SingleWeightPolicyConfigProperty {weight = newValue, ..}