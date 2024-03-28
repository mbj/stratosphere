module Stratosphere.Config.ConfigRule.ComplianceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ComplianceProperty :: Prelude.Type
instance ToResourceProperties ComplianceProperty
instance Prelude.Eq ComplianceProperty
instance Prelude.Show ComplianceProperty
instance JSON.ToJSON ComplianceProperty