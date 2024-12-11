module Stratosphere.Wisdom.AIAgent.AssociationConfigurationProperty (
        module Exports, AssociationConfigurationProperty(..),
        mkAssociationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.AssociationConfigurationDataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssociationConfigurationProperty
  = AssociationConfigurationProperty {associationConfigurationData :: (Prelude.Maybe AssociationConfigurationDataProperty),
                                      associationId :: (Prelude.Maybe (Value Prelude.Text)),
                                      associationType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssociationConfigurationProperty ::
  AssociationConfigurationProperty
mkAssociationConfigurationProperty
  = AssociationConfigurationProperty
      {associationConfigurationData = Prelude.Nothing,
       associationId = Prelude.Nothing, associationType = Prelude.Nothing}
instance ToResourceProperties AssociationConfigurationProperty where
  toResourceProperties AssociationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.AssociationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssociationConfigurationData"
                              Prelude.<$> associationConfigurationData,
                            (JSON..=) "AssociationId" Prelude.<$> associationId,
                            (JSON..=) "AssociationType" Prelude.<$> associationType])}
instance JSON.ToJSON AssociationConfigurationProperty where
  toJSON AssociationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssociationConfigurationData"
                 Prelude.<$> associationConfigurationData,
               (JSON..=) "AssociationId" Prelude.<$> associationId,
               (JSON..=) "AssociationType" Prelude.<$> associationType]))
instance Property "AssociationConfigurationData" AssociationConfigurationProperty where
  type PropertyType "AssociationConfigurationData" AssociationConfigurationProperty = AssociationConfigurationDataProperty
  set newValue AssociationConfigurationProperty {..}
    = AssociationConfigurationProperty
        {associationConfigurationData = Prelude.pure newValue, ..}
instance Property "AssociationId" AssociationConfigurationProperty where
  type PropertyType "AssociationId" AssociationConfigurationProperty = Value Prelude.Text
  set newValue AssociationConfigurationProperty {..}
    = AssociationConfigurationProperty
        {associationId = Prelude.pure newValue, ..}
instance Property "AssociationType" AssociationConfigurationProperty where
  type PropertyType "AssociationType" AssociationConfigurationProperty = Value Prelude.Text
  set newValue AssociationConfigurationProperty {..}
    = AssociationConfigurationProperty
        {associationType = Prelude.pure newValue, ..}