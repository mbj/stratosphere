module Stratosphere.Cognito.UserPool.CustomSMSSenderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomSMSSenderProperty :: Prelude.Type
instance ToResourceProperties CustomSMSSenderProperty
instance JSON.ToJSON CustomSMSSenderProperty