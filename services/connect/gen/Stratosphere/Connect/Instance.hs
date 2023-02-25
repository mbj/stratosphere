module Stratosphere.Connect.Instance (
        module Exports, Instance(..), mkInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Instance.AttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Instance
  = Instance {attributes :: AttributesProperty,
              directoryId :: (Prelude.Maybe (Value Prelude.Text)),
              identityManagementType :: (Value Prelude.Text),
              instanceAlias :: (Prelude.Maybe (Value Prelude.Text))}
mkInstance :: AttributesProperty -> Value Prelude.Text -> Instance
mkInstance attributes identityManagementType
  = Instance
      {attributes = attributes,
       identityManagementType = identityManagementType,
       directoryId = Prelude.Nothing, instanceAlias = Prelude.Nothing}
instance ToResourceProperties Instance where
  toResourceProperties Instance {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Instance",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attributes" JSON..= attributes,
                            "IdentityManagementType" JSON..= identityManagementType]
                           (Prelude.catMaybes
                              [(JSON..=) "DirectoryId" Prelude.<$> directoryId,
                               (JSON..=) "InstanceAlias" Prelude.<$> instanceAlias]))}
instance JSON.ToJSON Instance where
  toJSON Instance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attributes" JSON..= attributes,
               "IdentityManagementType" JSON..= identityManagementType]
              (Prelude.catMaybes
                 [(JSON..=) "DirectoryId" Prelude.<$> directoryId,
                  (JSON..=) "InstanceAlias" Prelude.<$> instanceAlias])))
instance Property "Attributes" Instance where
  type PropertyType "Attributes" Instance = AttributesProperty
  set newValue Instance {..} = Instance {attributes = newValue, ..}
instance Property "DirectoryId" Instance where
  type PropertyType "DirectoryId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {directoryId = Prelude.pure newValue, ..}
instance Property "IdentityManagementType" Instance where
  type PropertyType "IdentityManagementType" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {identityManagementType = newValue, ..}
instance Property "InstanceAlias" Instance where
  type PropertyType "InstanceAlias" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {instanceAlias = Prelude.pure newValue, ..}