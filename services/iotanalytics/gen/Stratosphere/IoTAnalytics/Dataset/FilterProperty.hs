module Stratosphere.IoTAnalytics.Dataset.FilterProperty (
        module Exports, FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.DeltaTimeProperty as Exports
import Stratosphere.ResourceProperties
data FilterProperty
  = FilterProperty {deltaTime :: (Prelude.Maybe DeltaTimeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty :: FilterProperty
mkFilterProperty = FilterProperty {deltaTime = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.Filter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "DeltaTime" Prelude.<$> deltaTime])}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "DeltaTime" Prelude.<$> deltaTime]))
instance Property "DeltaTime" FilterProperty where
  type PropertyType "DeltaTime" FilterProperty = DeltaTimeProperty
  set newValue FilterProperty {}
    = FilterProperty {deltaTime = Prelude.pure newValue, ..}