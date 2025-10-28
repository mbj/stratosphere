module Stratosphere.CodeDeploy.DeploymentGroup.OnPremisesTagSetListObjectProperty (
        module Exports, OnPremisesTagSetListObjectProperty(..),
        mkOnPremisesTagSetListObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.TagFilterProperty as Exports
import Stratosphere.ResourceProperties
data OnPremisesTagSetListObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagsetlistobject.html>
    OnPremisesTagSetListObjectProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagsetlistobject.html#cfn-codedeploy-deploymentgroup-onpremisestagsetlistobject-onpremisestaggroup>
                                        onPremisesTagGroup :: (Prelude.Maybe [TagFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnPremisesTagSetListObjectProperty ::
  OnPremisesTagSetListObjectProperty
mkOnPremisesTagSetListObjectProperty
  = OnPremisesTagSetListObjectProperty
      {haddock_workaround_ = (), onPremisesTagGroup = Prelude.Nothing}
instance ToResourceProperties OnPremisesTagSetListObjectProperty where
  toResourceProperties OnPremisesTagSetListObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSetListObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnPremisesTagGroup" Prelude.<$> onPremisesTagGroup])}
instance JSON.ToJSON OnPremisesTagSetListObjectProperty where
  toJSON OnPremisesTagSetListObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnPremisesTagGroup" Prelude.<$> onPremisesTagGroup]))
instance Property "OnPremisesTagGroup" OnPremisesTagSetListObjectProperty where
  type PropertyType "OnPremisesTagGroup" OnPremisesTagSetListObjectProperty = [TagFilterProperty]
  set newValue OnPremisesTagSetListObjectProperty {..}
    = OnPremisesTagSetListObjectProperty
        {onPremisesTagGroup = Prelude.pure newValue, ..}