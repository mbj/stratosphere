module Stratosphere.IAM.SAMLProvider.SAMLPrivateKeyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SAMLPrivateKeyProperty :: Prelude.Type
instance ToResourceProperties SAMLPrivateKeyProperty
instance Prelude.Eq SAMLPrivateKeyProperty
instance Prelude.Show SAMLPrivateKeyProperty
instance JSON.ToJSON SAMLPrivateKeyProperty