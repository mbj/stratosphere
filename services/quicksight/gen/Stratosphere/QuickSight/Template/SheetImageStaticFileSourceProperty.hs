module Stratosphere.QuickSight.Template.SheetImageStaticFileSourceProperty (
        SheetImageStaticFileSourceProperty(..),
        mkSheetImageStaticFileSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetImageStaticFileSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetimagestaticfilesource.html>
    SheetImageStaticFileSourceProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetimagestaticfilesource.html#cfn-quicksight-template-sheetimagestaticfilesource-staticfileid>
                                        staticFileId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetImageStaticFileSourceProperty ::
  Value Prelude.Text -> SheetImageStaticFileSourceProperty
mkSheetImageStaticFileSourceProperty staticFileId
  = SheetImageStaticFileSourceProperty
      {haddock_workaround_ = (), staticFileId = staticFileId}
instance ToResourceProperties SheetImageStaticFileSourceProperty where
  toResourceProperties SheetImageStaticFileSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SheetImageStaticFileSource",
         supportsTags = Prelude.False,
         properties = ["StaticFileId" JSON..= staticFileId]}
instance JSON.ToJSON SheetImageStaticFileSourceProperty where
  toJSON SheetImageStaticFileSourceProperty {..}
    = JSON.object ["StaticFileId" JSON..= staticFileId]
instance Property "StaticFileId" SheetImageStaticFileSourceProperty where
  type PropertyType "StaticFileId" SheetImageStaticFileSourceProperty = Value Prelude.Text
  set newValue SheetImageStaticFileSourceProperty {..}
    = SheetImageStaticFileSourceProperty {staticFileId = newValue, ..}