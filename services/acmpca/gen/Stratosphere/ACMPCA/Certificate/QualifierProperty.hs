module Stratosphere.ACMPCA.Certificate.QualifierProperty (
        QualifierProperty(..), mkQualifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QualifierProperty
  = QualifierProperty {cpsUri :: (Value Prelude.Text)}
mkQualifierProperty :: Value Prelude.Text -> QualifierProperty
mkQualifierProperty cpsUri = QualifierProperty {cpsUri = cpsUri}
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
  set newValue QualifierProperty {}
    = QualifierProperty {cpsUri = newValue, ..}