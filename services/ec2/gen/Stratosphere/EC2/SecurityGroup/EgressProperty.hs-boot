module Stratosphere.EC2.SecurityGroup.EgressProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EgressProperty :: Prelude.Type
instance ToResourceProperties EgressProperty
instance Prelude.Eq EgressProperty
instance Prelude.Show EgressProperty
instance JSON.ToJSON EgressProperty