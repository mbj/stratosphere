module Stratosphere.Cassandra.Type (
        module Exports, Type(..), mkType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Type.FieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Type
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-type.html>
    Type {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-type.html#cfn-cassandra-type-fields>
          fields :: [FieldProperty],
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-type.html#cfn-cassandra-type-keyspacename>
          keyspaceName :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-type.html#cfn-cassandra-type-typename>
          typeName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkType ::
  [FieldProperty] -> Value Prelude.Text -> Value Prelude.Text -> Type
mkType fields keyspaceName typeName
  = Type
      {haddock_workaround_ = (), fields = fields,
       keyspaceName = keyspaceName, typeName = typeName}
instance ToResourceProperties Type where
  toResourceProperties Type {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Type", supportsTags = Prelude.False,
         properties = ["Fields" JSON..= fields,
                       "KeyspaceName" JSON..= keyspaceName, "TypeName" JSON..= typeName]}
instance JSON.ToJSON Type where
  toJSON Type {..}
    = JSON.object
        ["Fields" JSON..= fields, "KeyspaceName" JSON..= keyspaceName,
         "TypeName" JSON..= typeName]
instance Property "Fields" Type where
  type PropertyType "Fields" Type = [FieldProperty]
  set newValue Type {..} = Type {fields = newValue, ..}
instance Property "KeyspaceName" Type where
  type PropertyType "KeyspaceName" Type = Value Prelude.Text
  set newValue Type {..} = Type {keyspaceName = newValue, ..}
instance Property "TypeName" Type where
  type PropertyType "TypeName" Type = Value Prelude.Text
  set newValue Type {..} = Type {typeName = newValue, ..}