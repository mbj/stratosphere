module Stratosphere.QuickSight.Theme.TypographyProperty (
        module Exports, TypographyProperty(..), mkTypographyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.FontProperty as Exports
import Stratosphere.ResourceProperties
data TypographyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-typography.html>
    TypographyProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-typography.html#cfn-quicksight-theme-typography-fontfamilies>
                        fontFamilies :: (Prelude.Maybe [FontProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTypographyProperty :: TypographyProperty
mkTypographyProperty
  = TypographyProperty
      {haddock_workaround_ = (), fontFamilies = Prelude.Nothing}
instance ToResourceProperties TypographyProperty where
  toResourceProperties TypographyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.Typography",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FontFamilies" Prelude.<$> fontFamilies])}
instance JSON.ToJSON TypographyProperty where
  toJSON TypographyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FontFamilies" Prelude.<$> fontFamilies]))
instance Property "FontFamilies" TypographyProperty where
  type PropertyType "FontFamilies" TypographyProperty = [FontProperty]
  set newValue TypographyProperty {..}
    = TypographyProperty {fontFamilies = Prelude.pure newValue, ..}