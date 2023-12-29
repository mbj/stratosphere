module Stratosphere.WAF.WebACL.WafActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WafActionProperty :: Prelude.Type
instance ToResourceProperties WafActionProperty
instance Prelude.Eq WafActionProperty
instance Prelude.Show WafActionProperty
instance JSON.ToJSON WafActionProperty