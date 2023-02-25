module Stratosphere.SES.ConfigurationSet.GuardianOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GuardianOptionsProperty :: Prelude.Type
instance ToResourceProperties GuardianOptionsProperty
instance JSON.ToJSON GuardianOptionsProperty