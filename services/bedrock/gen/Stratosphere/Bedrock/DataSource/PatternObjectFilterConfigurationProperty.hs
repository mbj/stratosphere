module Stratosphere.Bedrock.DataSource.PatternObjectFilterConfigurationProperty (
        module Exports, PatternObjectFilterConfigurationProperty(..),
        mkPatternObjectFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.PatternObjectFilterProperty as Exports
import Stratosphere.ResourceProperties
data PatternObjectFilterConfigurationProperty
  = PatternObjectFilterConfigurationProperty {filters :: [PatternObjectFilterProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPatternObjectFilterConfigurationProperty ::
  [PatternObjectFilterProperty]
  -> PatternObjectFilterConfigurationProperty
mkPatternObjectFilterConfigurationProperty filters
  = PatternObjectFilterConfigurationProperty {filters = filters}
instance ToResourceProperties PatternObjectFilterConfigurationProperty where
  toResourceProperties PatternObjectFilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.PatternObjectFilterConfiguration",
         supportsTags = Prelude.False,
         properties = ["Filters" JSON..= filters]}
instance JSON.ToJSON PatternObjectFilterConfigurationProperty where
  toJSON PatternObjectFilterConfigurationProperty {..}
    = JSON.object ["Filters" JSON..= filters]
instance Property "Filters" PatternObjectFilterConfigurationProperty where
  type PropertyType "Filters" PatternObjectFilterConfigurationProperty = [PatternObjectFilterProperty]
  set newValue PatternObjectFilterConfigurationProperty {}
    = PatternObjectFilterConfigurationProperty {filters = newValue, ..}