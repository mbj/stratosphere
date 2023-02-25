module Stratosphere.EC2.SecurityGroup.IngressProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IngressProperty :: Prelude.Type
instance ToResourceProperties IngressProperty
instance JSON.ToJSON IngressProperty