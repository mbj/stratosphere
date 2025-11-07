module Stratosphere.QuickSight.Template.SheetImageSourceProperty (
        module Exports, SheetImageSourceProperty(..),
        mkSheetImageSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetImageStaticFileSourceProperty as Exports
import Stratosphere.ResourceProperties
data SheetImageSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetimagesource.html>
    SheetImageSourceProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetimagesource.html#cfn-quicksight-template-sheetimagesource-sheetimagestaticfilesource>
                              sheetImageStaticFileSource :: (Prelude.Maybe SheetImageStaticFileSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetImageSourceProperty :: SheetImageSourceProperty
mkSheetImageSourceProperty
  = SheetImageSourceProperty
      {haddock_workaround_ = (),
       sheetImageStaticFileSource = Prelude.Nothing}
instance ToResourceProperties SheetImageSourceProperty where
  toResourceProperties SheetImageSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SheetImageSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SheetImageStaticFileSource"
                              Prelude.<$> sheetImageStaticFileSource])}
instance JSON.ToJSON SheetImageSourceProperty where
  toJSON SheetImageSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SheetImageStaticFileSource"
                 Prelude.<$> sheetImageStaticFileSource]))
instance Property "SheetImageStaticFileSource" SheetImageSourceProperty where
  type PropertyType "SheetImageStaticFileSource" SheetImageSourceProperty = SheetImageStaticFileSourceProperty
  set newValue SheetImageSourceProperty {..}
    = SheetImageSourceProperty
        {sheetImageStaticFileSource = Prelude.pure newValue, ..}