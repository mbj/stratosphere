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
  = OnPremisesTagSetListObjectProperty {onPremisesTagGroup :: (Prelude.Maybe [TagFilterProperty])}
mkOnPremisesTagSetListObjectProperty ::
  OnPremisesTagSetListObjectProperty
mkOnPremisesTagSetListObjectProperty
  = OnPremisesTagSetListObjectProperty
      {onPremisesTagGroup = Prelude.Nothing}
instance ToResourceProperties OnPremisesTagSetListObjectProperty where
  toResourceProperties OnPremisesTagSetListObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSetListObject",
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
  set newValue OnPremisesTagSetListObjectProperty {}
    = OnPremisesTagSetListObjectProperty
        {onPremisesTagGroup = Prelude.pure newValue, ..}