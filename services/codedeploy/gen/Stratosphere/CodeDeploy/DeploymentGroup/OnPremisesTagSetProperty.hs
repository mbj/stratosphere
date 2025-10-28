module Stratosphere.CodeDeploy.DeploymentGroup.OnPremisesTagSetProperty (
        module Exports, OnPremisesTagSetProperty(..),
        mkOnPremisesTagSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.OnPremisesTagSetListObjectProperty as Exports
import Stratosphere.ResourceProperties
data OnPremisesTagSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html>
    OnPremisesTagSetProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html#cfn-codedeploy-deploymentgroup-onpremisestagset-onpremisestagsetlist>
                              onPremisesTagSetList :: (Prelude.Maybe [OnPremisesTagSetListObjectProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnPremisesTagSetProperty :: OnPremisesTagSetProperty
mkOnPremisesTagSetProperty
  = OnPremisesTagSetProperty
      {haddock_workaround_ = (), onPremisesTagSetList = Prelude.Nothing}
instance ToResourceProperties OnPremisesTagSetProperty where
  toResourceProperties OnPremisesTagSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnPremisesTagSetList"
                              Prelude.<$> onPremisesTagSetList])}
instance JSON.ToJSON OnPremisesTagSetProperty where
  toJSON OnPremisesTagSetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnPremisesTagSetList"
                 Prelude.<$> onPremisesTagSetList]))
instance Property "OnPremisesTagSetList" OnPremisesTagSetProperty where
  type PropertyType "OnPremisesTagSetList" OnPremisesTagSetProperty = [OnPremisesTagSetListObjectProperty]
  set newValue OnPremisesTagSetProperty {..}
    = OnPremisesTagSetProperty
        {onPremisesTagSetList = Prelude.pure newValue, ..}