module Stratosphere.CloudFront.RealtimeLogConfig (
        module Exports, RealtimeLogConfig(..), mkRealtimeLogConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.RealtimeLogConfig.EndPointProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RealtimeLogConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html>
    RealtimeLogConfig {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html#cfn-cloudfront-realtimelogconfig-endpoints>
                       endPoints :: [EndPointProperty],
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html#cfn-cloudfront-realtimelogconfig-fields>
                       fields :: (ValueList Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html#cfn-cloudfront-realtimelogconfig-name>
                       name :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-realtimelogconfig.html#cfn-cloudfront-realtimelogconfig-samplingrate>
                       samplingRate :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRealtimeLogConfig ::
  [EndPointProperty]
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Double -> RealtimeLogConfig
mkRealtimeLogConfig endPoints fields name samplingRate
  = RealtimeLogConfig
      {haddock_workaround_ = (), endPoints = endPoints, fields = fields,
       name = name, samplingRate = samplingRate}
instance ToResourceProperties RealtimeLogConfig where
  toResourceProperties RealtimeLogConfig {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::RealtimeLogConfig",
         supportsTags = Prelude.False,
         properties = ["EndPoints" JSON..= endPoints,
                       "Fields" JSON..= fields, "Name" JSON..= name,
                       "SamplingRate" JSON..= samplingRate]}
instance JSON.ToJSON RealtimeLogConfig where
  toJSON RealtimeLogConfig {..}
    = JSON.object
        ["EndPoints" JSON..= endPoints, "Fields" JSON..= fields,
         "Name" JSON..= name, "SamplingRate" JSON..= samplingRate]
instance Property "EndPoints" RealtimeLogConfig where
  type PropertyType "EndPoints" RealtimeLogConfig = [EndPointProperty]
  set newValue RealtimeLogConfig {..}
    = RealtimeLogConfig {endPoints = newValue, ..}
instance Property "Fields" RealtimeLogConfig where
  type PropertyType "Fields" RealtimeLogConfig = ValueList Prelude.Text
  set newValue RealtimeLogConfig {..}
    = RealtimeLogConfig {fields = newValue, ..}
instance Property "Name" RealtimeLogConfig where
  type PropertyType "Name" RealtimeLogConfig = Value Prelude.Text
  set newValue RealtimeLogConfig {..}
    = RealtimeLogConfig {name = newValue, ..}
instance Property "SamplingRate" RealtimeLogConfig where
  type PropertyType "SamplingRate" RealtimeLogConfig = Value Prelude.Double
  set newValue RealtimeLogConfig {..}
    = RealtimeLogConfig {samplingRate = newValue, ..}