module Stratosphere.IoT.JobTemplate.AbortConfigProperty (
        module Exports, AbortConfigProperty(..), mkAbortConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.AbortCriteriaProperty as Exports
import Stratosphere.ResourceProperties
data AbortConfigProperty
  = AbortConfigProperty {criteriaList :: [AbortCriteriaProperty]}
mkAbortConfigProperty ::
  [AbortCriteriaProperty] -> AbortConfigProperty
mkAbortConfigProperty criteriaList
  = AbortConfigProperty {criteriaList = criteriaList}
instance ToResourceProperties AbortConfigProperty where
  toResourceProperties AbortConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.AbortConfig",
         supportsTags = Prelude.False,
         properties = ["CriteriaList" JSON..= criteriaList]}
instance JSON.ToJSON AbortConfigProperty where
  toJSON AbortConfigProperty {..}
    = JSON.object ["CriteriaList" JSON..= criteriaList]
instance Property "CriteriaList" AbortConfigProperty where
  type PropertyType "CriteriaList" AbortConfigProperty = [AbortCriteriaProperty]
  set newValue AbortConfigProperty {}
    = AbortConfigProperty {criteriaList = newValue, ..}