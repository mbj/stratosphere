module Stratosphere.VpcLattice.Rule.FixedResponseProperty (
        FixedResponseProperty(..), mkFixedResponseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FixedResponseProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-fixedresponse.html>
    FixedResponseProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-fixedresponse.html#cfn-vpclattice-rule-fixedresponse-statuscode>
                           statusCode :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFixedResponseProperty ::
  Value Prelude.Integer -> FixedResponseProperty
mkFixedResponseProperty statusCode
  = FixedResponseProperty
      {haddock_workaround_ = (), statusCode = statusCode}
instance ToResourceProperties FixedResponseProperty where
  toResourceProperties FixedResponseProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.FixedResponse",
         supportsTags = Prelude.False,
         properties = ["StatusCode" JSON..= statusCode]}
instance JSON.ToJSON FixedResponseProperty where
  toJSON FixedResponseProperty {..}
    = JSON.object ["StatusCode" JSON..= statusCode]
instance Property "StatusCode" FixedResponseProperty where
  type PropertyType "StatusCode" FixedResponseProperty = Value Prelude.Integer
  set newValue FixedResponseProperty {..}
    = FixedResponseProperty {statusCode = newValue, ..}