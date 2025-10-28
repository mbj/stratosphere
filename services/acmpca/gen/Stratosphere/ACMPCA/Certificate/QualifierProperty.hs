module Stratosphere.ACMPCA.Certificate.QualifierProperty (
        QualifierProperty(..), mkQualifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QualifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-qualifier.html>
    QualifierProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-qualifier.html#cfn-acmpca-certificate-qualifier-cpsuri>
                       cpsUri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQualifierProperty :: Value Prelude.Text -> QualifierProperty
mkQualifierProperty cpsUri
  = QualifierProperty {haddock_workaround_ = (), cpsUri = cpsUri}
instance ToResourceProperties QualifierProperty where
  toResourceProperties QualifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.Qualifier",
         supportsTags = Prelude.False,
         properties = ["CpsUri" JSON..= cpsUri]}
instance JSON.ToJSON QualifierProperty where
  toJSON QualifierProperty {..}
    = JSON.object ["CpsUri" JSON..= cpsUri]
instance Property "CpsUri" QualifierProperty where
  type PropertyType "CpsUri" QualifierProperty = Value Prelude.Text
  set newValue QualifierProperty {..}
    = QualifierProperty {cpsUri = newValue, ..}