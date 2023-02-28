module Stratosphere.WAFv2.LoggingConfiguration.LoggingFilterProperty (
        module Exports, LoggingFilterProperty(..), mkLoggingFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.FilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingFilterProperty
  = LoggingFilterProperty {defaultBehavior :: (Value Prelude.Text),
                           filters :: [FilterProperty]}
mkLoggingFilterProperty ::
  Value Prelude.Text -> [FilterProperty] -> LoggingFilterProperty
mkLoggingFilterProperty defaultBehavior filters
  = LoggingFilterProperty
      {defaultBehavior = defaultBehavior, filters = filters}
instance ToResourceProperties LoggingFilterProperty where
  toResourceProperties LoggingFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.LoggingFilter",
         supportsTags = Prelude.False,
         properties = ["DefaultBehavior" JSON..= defaultBehavior,
                       "Filters" JSON..= filters]}
instance JSON.ToJSON LoggingFilterProperty where
  toJSON LoggingFilterProperty {..}
    = JSON.object
        ["DefaultBehavior" JSON..= defaultBehavior,
         "Filters" JSON..= filters]
instance Property "DefaultBehavior" LoggingFilterProperty where
  type PropertyType "DefaultBehavior" LoggingFilterProperty = Value Prelude.Text
  set newValue LoggingFilterProperty {..}
    = LoggingFilterProperty {defaultBehavior = newValue, ..}
instance Property "Filters" LoggingFilterProperty where
  type PropertyType "Filters" LoggingFilterProperty = [FilterProperty]
  set newValue LoggingFilterProperty {..}
    = LoggingFilterProperty {filters = newValue, ..}