module Stratosphere.QuickSight.Dashboard.SectionStyleProperty (
        module Exports, SectionStyleProperty(..), mkSectionStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SpacingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SectionStyleProperty
  = SectionStyleProperty {height :: (Prelude.Maybe (Value Prelude.Text)),
                          padding :: (Prelude.Maybe SpacingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSectionStyleProperty :: SectionStyleProperty
mkSectionStyleProperty
  = SectionStyleProperty
      {height = Prelude.Nothing, padding = Prelude.Nothing}
instance ToResourceProperties SectionStyleProperty where
  toResourceProperties SectionStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SectionStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Height" Prelude.<$> height,
                            (JSON..=) "Padding" Prelude.<$> padding])}
instance JSON.ToJSON SectionStyleProperty where
  toJSON SectionStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Height" Prelude.<$> height,
               (JSON..=) "Padding" Prelude.<$> padding]))
instance Property "Height" SectionStyleProperty where
  type PropertyType "Height" SectionStyleProperty = Value Prelude.Text
  set newValue SectionStyleProperty {..}
    = SectionStyleProperty {height = Prelude.pure newValue, ..}
instance Property "Padding" SectionStyleProperty where
  type PropertyType "Padding" SectionStyleProperty = SpacingProperty
  set newValue SectionStyleProperty {..}
    = SectionStyleProperty {padding = Prelude.pure newValue, ..}