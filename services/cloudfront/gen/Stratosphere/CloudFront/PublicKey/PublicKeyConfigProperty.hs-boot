module Stratosphere.CloudFront.PublicKey.PublicKeyConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PublicKeyConfigProperty :: Prelude.Type
instance ToResourceProperties PublicKeyConfigProperty
instance JSON.ToJSON PublicKeyConfigProperty