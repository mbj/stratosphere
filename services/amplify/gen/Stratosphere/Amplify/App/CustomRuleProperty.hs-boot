module Stratosphere.Amplify.App.CustomRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomRuleProperty :: Prelude.Type
instance ToResourceProperties CustomRuleProperty
instance Prelude.Eq CustomRuleProperty
instance Prelude.Show CustomRuleProperty
instance JSON.ToJSON CustomRuleProperty