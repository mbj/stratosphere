module Stratosphere.PCAConnectorAD.DirectoryRegistration (
        DirectoryRegistration(..), mkDirectoryRegistration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DirectoryRegistration
  = DirectoryRegistration {directoryId :: (Value Prelude.Text),
                           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDirectoryRegistration ::
  Value Prelude.Text -> DirectoryRegistration
mkDirectoryRegistration directoryId
  = DirectoryRegistration
      {directoryId = directoryId, tags = Prelude.Nothing}
instance ToResourceProperties DirectoryRegistration where
  toResourceProperties DirectoryRegistration {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::DirectoryRegistration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DirectoryId" JSON..= directoryId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DirectoryRegistration where
  toJSON DirectoryRegistration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DirectoryId" JSON..= directoryId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DirectoryId" DirectoryRegistration where
  type PropertyType "DirectoryId" DirectoryRegistration = Value Prelude.Text
  set newValue DirectoryRegistration {..}
    = DirectoryRegistration {directoryId = newValue, ..}
instance Property "Tags" DirectoryRegistration where
  type PropertyType "Tags" DirectoryRegistration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DirectoryRegistration {..}
    = DirectoryRegistration {tags = Prelude.pure newValue, ..}