module Stratosphere.IoT.SecurityProfile.BehaviorCriteriaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BehaviorCriteriaProperty :: Prelude.Type
instance ToResourceProperties BehaviorCriteriaProperty
instance JSON.ToJSON BehaviorCriteriaProperty