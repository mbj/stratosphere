module Stratosphere.Connect.TaskTemplate.FieldIdentifierProperty (
        FieldIdentifierProperty(..), mkFieldIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldIdentifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-tasktemplate-fieldidentifier.html>
    FieldIdentifierProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-tasktemplate-fieldidentifier.html#cfn-connect-tasktemplate-fieldidentifier-name>
                             name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldIdentifierProperty ::
  Value Prelude.Text -> FieldIdentifierProperty
mkFieldIdentifierProperty name
  = FieldIdentifierProperty {haddock_workaround_ = (), name = name}
instance ToResourceProperties FieldIdentifierProperty where
  toResourceProperties FieldIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.FieldIdentifier",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON FieldIdentifierProperty where
  toJSON FieldIdentifierProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" FieldIdentifierProperty where
  type PropertyType "Name" FieldIdentifierProperty = Value Prelude.Text
  set newValue FieldIdentifierProperty {..}
    = FieldIdentifierProperty {name = newValue, ..}