module Stratosphere.PCAConnectorAD.DirectoryRegistration (
        DirectoryRegistration(..), mkDirectoryRegistration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DirectoryRegistration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-directoryregistration.html>
    DirectoryRegistration {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-directoryregistration.html#cfn-pcaconnectorad-directoryregistration-directoryid>
                           directoryId :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-directoryregistration.html#cfn-pcaconnectorad-directoryregistration-tags>
                           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDirectoryRegistration ::
  Value Prelude.Text -> DirectoryRegistration
mkDirectoryRegistration directoryId
  = DirectoryRegistration
      {haddock_workaround_ = (), directoryId = directoryId,
       tags = Prelude.Nothing}
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