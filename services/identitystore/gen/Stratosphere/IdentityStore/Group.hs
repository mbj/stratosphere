module Stratosphere.IdentityStore.Group (
        Group(..), mkGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Group
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-identitystore-group.html>
    Group {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-identitystore-group.html#cfn-identitystore-group-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-identitystore-group.html#cfn-identitystore-group-displayname>
           displayName :: (Value Prelude.Text),
           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-identitystore-group.html#cfn-identitystore-group-identitystoreid>
           identityStoreId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroup :: Value Prelude.Text -> Value Prelude.Text -> Group
mkGroup displayName identityStoreId
  = Group
      {displayName = displayName, identityStoreId = identityStoreId,
       description = Prelude.Nothing}
instance ToResourceProperties Group where
  toResourceProperties Group {..}
    = ResourceProperties
        {awsType = "AWS::IdentityStore::Group",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DisplayName" JSON..= displayName,
                            "IdentityStoreId" JSON..= identityStoreId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON Group where
  toJSON Group {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DisplayName" JSON..= displayName,
               "IdentityStoreId" JSON..= identityStoreId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" Group where
  type PropertyType "Description" Group = Value Prelude.Text
  set newValue Group {..}
    = Group {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Group where
  type PropertyType "DisplayName" Group = Value Prelude.Text
  set newValue Group {..} = Group {displayName = newValue, ..}
instance Property "IdentityStoreId" Group where
  type PropertyType "IdentityStoreId" Group = Value Prelude.Text
  set newValue Group {..} = Group {identityStoreId = newValue, ..}