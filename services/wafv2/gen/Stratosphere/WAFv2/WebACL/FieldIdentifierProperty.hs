module Stratosphere.WAFv2.WebACL.FieldIdentifierProperty (
        FieldIdentifierProperty(..), mkFieldIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldIdentifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldidentifier.html>
    FieldIdentifierProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldidentifier.html#cfn-wafv2-webacl-fieldidentifier-identifier>
                             identifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldIdentifierProperty ::
  Value Prelude.Text -> FieldIdentifierProperty
mkFieldIdentifierProperty identifier
  = FieldIdentifierProperty
      {haddock_workaround_ = (), identifier = identifier}
instance ToResourceProperties FieldIdentifierProperty where
  toResourceProperties FieldIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.FieldIdentifier",
         supportsTags = Prelude.False,
         properties = ["Identifier" JSON..= identifier]}
instance JSON.ToJSON FieldIdentifierProperty where
  toJSON FieldIdentifierProperty {..}
    = JSON.object ["Identifier" JSON..= identifier]
instance Property "Identifier" FieldIdentifierProperty where
  type PropertyType "Identifier" FieldIdentifierProperty = Value Prelude.Text
  set newValue FieldIdentifierProperty {..}
    = FieldIdentifierProperty {identifier = newValue, ..}