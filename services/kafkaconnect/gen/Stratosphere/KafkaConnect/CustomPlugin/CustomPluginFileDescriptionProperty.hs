module Stratosphere.KafkaConnect.CustomPlugin.CustomPluginFileDescriptionProperty (
        CustomPluginFileDescriptionProperty(..),
        mkCustomPluginFileDescriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomPluginFileDescriptionProperty
  = CustomPluginFileDescriptionProperty {fileMd5 :: (Prelude.Maybe (Value Prelude.Text)),
                                         fileSize :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomPluginFileDescriptionProperty ::
  CustomPluginFileDescriptionProperty
mkCustomPluginFileDescriptionProperty
  = CustomPluginFileDescriptionProperty
      {fileMd5 = Prelude.Nothing, fileSize = Prelude.Nothing}
instance ToResourceProperties CustomPluginFileDescriptionProperty where
  toResourceProperties CustomPluginFileDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::CustomPlugin.CustomPluginFileDescription",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FileMd5" Prelude.<$> fileMd5,
                            (JSON..=) "FileSize" Prelude.<$> fileSize])}
instance JSON.ToJSON CustomPluginFileDescriptionProperty where
  toJSON CustomPluginFileDescriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FileMd5" Prelude.<$> fileMd5,
               (JSON..=) "FileSize" Prelude.<$> fileSize]))
instance Property "FileMd5" CustomPluginFileDescriptionProperty where
  type PropertyType "FileMd5" CustomPluginFileDescriptionProperty = Value Prelude.Text
  set newValue CustomPluginFileDescriptionProperty {..}
    = CustomPluginFileDescriptionProperty
        {fileMd5 = Prelude.pure newValue, ..}
instance Property "FileSize" CustomPluginFileDescriptionProperty where
  type PropertyType "FileSize" CustomPluginFileDescriptionProperty = Value Prelude.Integer
  set newValue CustomPluginFileDescriptionProperty {..}
    = CustomPluginFileDescriptionProperty
        {fileSize = Prelude.pure newValue, ..}