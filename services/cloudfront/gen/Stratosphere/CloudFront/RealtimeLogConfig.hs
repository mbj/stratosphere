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
  = RealtimeLogConfig {endPoints :: [EndPointProperty],
                       fields :: (ValueList Prelude.Text),
                       name :: (Value Prelude.Text),
                       samplingRate :: (Value Prelude.Double)}
mkRealtimeLogConfig ::
  [EndPointProperty]
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Double -> RealtimeLogConfig
mkRealtimeLogConfig endPoints fields name samplingRate
  = RealtimeLogConfig
      {endPoints = endPoints, fields = fields, name = name,
       samplingRate = samplingRate}
instance ToResourceProperties RealtimeLogConfig where
  toResourceProperties RealtimeLogConfig {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::RealtimeLogConfig",
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