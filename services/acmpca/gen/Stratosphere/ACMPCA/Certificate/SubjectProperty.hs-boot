module Stratosphere.ACMPCA.Certificate.SubjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SubjectProperty :: Prelude.Type
instance ToResourceProperties SubjectProperty
instance Prelude.Eq SubjectProperty
instance Prelude.Show SubjectProperty
instance JSON.ToJSON SubjectProperty