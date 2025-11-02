module Stratosphere.ACMPCA.Certificate.ValidityProperty (
        ValidityProperty(..), mkValidityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-validity.html>
    ValidityProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-validity.html#cfn-acmpca-certificate-validity-type>
                      type' :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-validity.html#cfn-acmpca-certificate-validity-value>
                      value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValidityProperty ::
  Value Prelude.Text -> Value Prelude.Double -> ValidityProperty
mkValidityProperty type' value
  = ValidityProperty
      {haddock_workaround_ = (), type' = type', value = value}
instance ToResourceProperties ValidityProperty where
  toResourceProperties ValidityProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.Validity",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON ValidityProperty where
  toJSON ValidityProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" ValidityProperty where
  type PropertyType "Type" ValidityProperty = Value Prelude.Text
  set newValue ValidityProperty {..}
    = ValidityProperty {type' = newValue, ..}
instance Property "Value" ValidityProperty where
  type PropertyType "Value" ValidityProperty = Value Prelude.Double
  set newValue ValidityProperty {..}
    = ValidityProperty {value = newValue, ..}