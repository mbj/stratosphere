module Stratosphere.Greengrass.FunctionDefinitionVersion.ResourceAccessPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceAccessPolicyProperty :: Prelude.Type
instance ToResourceProperties ResourceAccessPolicyProperty
instance Prelude.Eq ResourceAccessPolicyProperty
instance Prelude.Show ResourceAccessPolicyProperty
instance JSON.ToJSON ResourceAccessPolicyProperty