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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-loggingfilter.html>
    LoggingFilterProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-loggingfilter.html#cfn-wafv2-loggingconfiguration-loggingfilter-defaultbehavior>
                           defaultBehavior :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-loggingfilter.html#cfn-wafv2-loggingconfiguration-loggingfilter-filters>
                           filters :: [FilterProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingFilterProperty ::
  Value Prelude.Text -> [FilterProperty] -> LoggingFilterProperty
mkLoggingFilterProperty defaultBehavior filters
  = LoggingFilterProperty
      {haddock_workaround_ = (), defaultBehavior = defaultBehavior,
       filters = filters}
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