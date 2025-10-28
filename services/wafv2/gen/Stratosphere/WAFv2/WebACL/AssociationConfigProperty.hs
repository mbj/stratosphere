module Stratosphere.WAFv2.WebACL.AssociationConfigProperty (
        module Exports, AssociationConfigProperty(..),
        mkAssociationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RequestBodyAssociatedResourceTypeConfigProperty as Exports
import Stratosphere.ResourceProperties
data AssociationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-associationconfig.html>
    AssociationConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-associationconfig.html#cfn-wafv2-webacl-associationconfig-requestbody>
                               requestBody :: (Prelude.Maybe (Prelude.Map Prelude.Text RequestBodyAssociatedResourceTypeConfigProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssociationConfigProperty :: AssociationConfigProperty
mkAssociationConfigProperty
  = AssociationConfigProperty
      {haddock_workaround_ = (), requestBody = Prelude.Nothing}
instance ToResourceProperties AssociationConfigProperty where
  toResourceProperties AssociationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.AssociationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RequestBody" Prelude.<$> requestBody])}
instance JSON.ToJSON AssociationConfigProperty where
  toJSON AssociationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RequestBody" Prelude.<$> requestBody]))
instance Property "RequestBody" AssociationConfigProperty where
  type PropertyType "RequestBody" AssociationConfigProperty = Prelude.Map Prelude.Text RequestBodyAssociatedResourceTypeConfigProperty
  set newValue AssociationConfigProperty {..}
    = AssociationConfigProperty
        {requestBody = Prelude.pure newValue, ..}