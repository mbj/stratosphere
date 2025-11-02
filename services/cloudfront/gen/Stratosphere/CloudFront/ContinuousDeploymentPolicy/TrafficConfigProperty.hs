module Stratosphere.CloudFront.ContinuousDeploymentPolicy.TrafficConfigProperty (
        module Exports, TrafficConfigProperty(..), mkTrafficConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.SingleHeaderConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.SingleWeightConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrafficConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-trafficconfig.html>
    TrafficConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-trafficconfig.html#cfn-cloudfront-continuousdeploymentpolicy-trafficconfig-singleheaderconfig>
                           singleHeaderConfig :: (Prelude.Maybe SingleHeaderConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-trafficconfig.html#cfn-cloudfront-continuousdeploymentpolicy-trafficconfig-singleweightconfig>
                           singleWeightConfig :: (Prelude.Maybe SingleWeightConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-trafficconfig.html#cfn-cloudfront-continuousdeploymentpolicy-trafficconfig-type>
                           type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficConfigProperty ::
  Value Prelude.Text -> TrafficConfigProperty
mkTrafficConfigProperty type'
  = TrafficConfigProperty
      {haddock_workaround_ = (), type' = type',
       singleHeaderConfig = Prelude.Nothing,
       singleWeightConfig = Prelude.Nothing}
instance ToResourceProperties TrafficConfigProperty where
  toResourceProperties TrafficConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ContinuousDeploymentPolicy.TrafficConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "SingleHeaderConfig" Prelude.<$> singleHeaderConfig,
                               (JSON..=) "SingleWeightConfig" Prelude.<$> singleWeightConfig]))}
instance JSON.ToJSON TrafficConfigProperty where
  toJSON TrafficConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "SingleHeaderConfig" Prelude.<$> singleHeaderConfig,
                  (JSON..=) "SingleWeightConfig" Prelude.<$> singleWeightConfig])))
instance Property "SingleHeaderConfig" TrafficConfigProperty where
  type PropertyType "SingleHeaderConfig" TrafficConfigProperty = SingleHeaderConfigProperty
  set newValue TrafficConfigProperty {..}
    = TrafficConfigProperty
        {singleHeaderConfig = Prelude.pure newValue, ..}
instance Property "SingleWeightConfig" TrafficConfigProperty where
  type PropertyType "SingleWeightConfig" TrafficConfigProperty = SingleWeightConfigProperty
  set newValue TrafficConfigProperty {..}
    = TrafficConfigProperty
        {singleWeightConfig = Prelude.pure newValue, ..}
instance Property "Type" TrafficConfigProperty where
  type PropertyType "Type" TrafficConfigProperty = Value Prelude.Text
  set newValue TrafficConfigProperty {..}
    = TrafficConfigProperty {type' = newValue, ..}