module Stratosphere.Connect.TaskTemplate.ReadOnlyFieldInfoProperty (
        module Exports, ReadOnlyFieldInfoProperty(..),
        mkReadOnlyFieldInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
data ReadOnlyFieldInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-tasktemplate-readonlyfieldinfo.html>
    ReadOnlyFieldInfoProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-tasktemplate-readonlyfieldinfo.html#cfn-connect-tasktemplate-readonlyfieldinfo-id>
                               id :: FieldIdentifierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadOnlyFieldInfoProperty ::
  FieldIdentifierProperty -> ReadOnlyFieldInfoProperty
mkReadOnlyFieldInfoProperty id
  = ReadOnlyFieldInfoProperty {haddock_workaround_ = (), id = id}
instance ToResourceProperties ReadOnlyFieldInfoProperty where
  toResourceProperties ReadOnlyFieldInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.ReadOnlyFieldInfo",
         supportsTags = Prelude.False, properties = ["Id" JSON..= id]}
instance JSON.ToJSON ReadOnlyFieldInfoProperty where
  toJSON ReadOnlyFieldInfoProperty {..}
    = JSON.object ["Id" JSON..= id]
instance Property "Id" ReadOnlyFieldInfoProperty where
  type PropertyType "Id" ReadOnlyFieldInfoProperty = FieldIdentifierProperty
  set newValue ReadOnlyFieldInfoProperty {..}
    = ReadOnlyFieldInfoProperty {id = newValue, ..}