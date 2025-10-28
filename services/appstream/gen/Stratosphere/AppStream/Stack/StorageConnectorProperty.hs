module Stratosphere.AppStream.Stack.StorageConnectorProperty (
        StorageConnectorProperty(..), mkStorageConnectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageConnectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html>
    StorageConnectorProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-connectortype>
                              connectorType :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-domains>
                              domains :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-resourceidentifier>
                              resourceIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageConnectorProperty ::
  Value Prelude.Text -> StorageConnectorProperty
mkStorageConnectorProperty connectorType
  = StorageConnectorProperty
      {haddock_workaround_ = (), connectorType = connectorType,
       domains = Prelude.Nothing, resourceIdentifier = Prelude.Nothing}
instance ToResourceProperties StorageConnectorProperty where
  toResourceProperties StorageConnectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Stack.StorageConnector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectorType" JSON..= connectorType]
                           (Prelude.catMaybes
                              [(JSON..=) "Domains" Prelude.<$> domains,
                               (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier]))}
instance JSON.ToJSON StorageConnectorProperty where
  toJSON StorageConnectorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectorType" JSON..= connectorType]
              (Prelude.catMaybes
                 [(JSON..=) "Domains" Prelude.<$> domains,
                  (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier])))
instance Property "ConnectorType" StorageConnectorProperty where
  type PropertyType "ConnectorType" StorageConnectorProperty = Value Prelude.Text
  set newValue StorageConnectorProperty {..}
    = StorageConnectorProperty {connectorType = newValue, ..}
instance Property "Domains" StorageConnectorProperty where
  type PropertyType "Domains" StorageConnectorProperty = ValueList Prelude.Text
  set newValue StorageConnectorProperty {..}
    = StorageConnectorProperty {domains = Prelude.pure newValue, ..}
instance Property "ResourceIdentifier" StorageConnectorProperty where
  type PropertyType "ResourceIdentifier" StorageConnectorProperty = Value Prelude.Text
  set newValue StorageConnectorProperty {..}
    = StorageConnectorProperty
        {resourceIdentifier = Prelude.pure newValue, ..}