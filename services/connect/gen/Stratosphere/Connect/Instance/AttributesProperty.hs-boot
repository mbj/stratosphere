module Stratosphere.Connect.Instance.AttributesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AttributesProperty :: Prelude.Type
instance ToResourceProperties AttributesProperty
instance Prelude.Eq AttributesProperty
instance Prelude.Show AttributesProperty
instance JSON.ToJSON AttributesProperty