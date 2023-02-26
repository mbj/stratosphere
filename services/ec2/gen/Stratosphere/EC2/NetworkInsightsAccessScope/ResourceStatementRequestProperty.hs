module Stratosphere.EC2.NetworkInsightsAccessScope.ResourceStatementRequestProperty (
        ResourceStatementRequestProperty(..),
        mkResourceStatementRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceStatementRequestProperty
  = ResourceStatementRequestProperty {resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      resources :: (Prelude.Maybe (ValueList Prelude.Text))}
mkResourceStatementRequestProperty ::
  ResourceStatementRequestProperty
mkResourceStatementRequestProperty
  = ResourceStatementRequestProperty
      {resourceTypes = Prelude.Nothing, resources = Prelude.Nothing}
instance ToResourceProperties ResourceStatementRequestProperty where
  toResourceProperties ResourceStatementRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAccessScope.ResourceStatementRequest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceTypes" Prelude.<$> resourceTypes,
                            (JSON..=) "Resources" Prelude.<$> resources])}
instance JSON.ToJSON ResourceStatementRequestProperty where
  toJSON ResourceStatementRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceTypes" Prelude.<$> resourceTypes,
               (JSON..=) "Resources" Prelude.<$> resources]))
instance Property "ResourceTypes" ResourceStatementRequestProperty where
  type PropertyType "ResourceTypes" ResourceStatementRequestProperty = ValueList Prelude.Text
  set newValue ResourceStatementRequestProperty {..}
    = ResourceStatementRequestProperty
        {resourceTypes = Prelude.pure newValue, ..}
instance Property "Resources" ResourceStatementRequestProperty where
  type PropertyType "Resources" ResourceStatementRequestProperty = ValueList Prelude.Text
  set newValue ResourceStatementRequestProperty {..}
    = ResourceStatementRequestProperty
        {resources = Prelude.pure newValue, ..}