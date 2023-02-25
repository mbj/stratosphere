module Stratosphere.NetworkFirewall.RuleGroup.PublishMetricActionProperty (
        module Exports, PublishMetricActionProperty(..),
        mkPublishMetricActionProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.DimensionProperty as Exports
import Stratosphere.ResourceProperties
data PublishMetricActionProperty
  = PublishMetricActionProperty {dimensions :: [DimensionProperty]}
mkPublishMetricActionProperty ::
  [DimensionProperty] -> PublishMetricActionProperty
mkPublishMetricActionProperty dimensions
  = PublishMetricActionProperty {dimensions = dimensions}
instance ToResourceProperties PublishMetricActionProperty where
  toResourceProperties PublishMetricActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.PublishMetricAction",
         properties = ["Dimensions" JSON..= dimensions]}
instance JSON.ToJSON PublishMetricActionProperty where
  toJSON PublishMetricActionProperty {..}
    = JSON.object ["Dimensions" JSON..= dimensions]
instance Property "Dimensions" PublishMetricActionProperty where
  type PropertyType "Dimensions" PublishMetricActionProperty = [DimensionProperty]
  set newValue PublishMetricActionProperty {}
    = PublishMetricActionProperty {dimensions = newValue, ..}