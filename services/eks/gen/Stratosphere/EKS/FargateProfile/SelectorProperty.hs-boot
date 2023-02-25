module Stratosphere.EKS.FargateProfile.SelectorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SelectorProperty :: Prelude.Type
instance ToResourceProperties SelectorProperty
instance JSON.ToJSON SelectorProperty