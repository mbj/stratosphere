module Stratosphere.IoT.JobTemplate.AbortConfigProperty (
        module Exports, AbortConfigProperty(..), mkAbortConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.AbortCriteriaProperty as Exports
import Stratosphere.ResourceProperties
data AbortConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-abortconfig.html>
    AbortConfigProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-abortconfig.html#cfn-iot-jobtemplate-abortconfig-criterialist>
                         criteriaList :: [AbortCriteriaProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAbortConfigProperty ::
  [AbortCriteriaProperty] -> AbortConfigProperty
mkAbortConfigProperty criteriaList
  = AbortConfigProperty
      {haddock_workaround_ = (), criteriaList = criteriaList}
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
  set newValue AbortConfigProperty {..}
    = AbortConfigProperty {criteriaList = newValue, ..}