module Stratosphere.CloudTrail.Dashboard.FrequencyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FrequencyProperty :: Prelude.Type
instance ToResourceProperties FrequencyProperty
instance Prelude.Eq FrequencyProperty
instance Prelude.Show FrequencyProperty
instance JSON.ToJSON FrequencyProperty