module Stratosphere.OpenSearchService.Application.IamIdentityCenterOptionsProperty (
        IamIdentityCenterOptionsProperty(..),
        mkIamIdentityCenterOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamIdentityCenterOptionsProperty
  = IamIdentityCenterOptionsProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                      iamIdentityCenterInstanceArn :: (Prelude.Maybe (Value Prelude.Text)),
                                      iamRoleForIdentityCenterApplicationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamIdentityCenterOptionsProperty ::
  IamIdentityCenterOptionsProperty
mkIamIdentityCenterOptionsProperty
  = IamIdentityCenterOptionsProperty
      {enabled = Prelude.Nothing,
       iamIdentityCenterInstanceArn = Prelude.Nothing,
       iamRoleForIdentityCenterApplicationArn = Prelude.Nothing}
instance ToResourceProperties IamIdentityCenterOptionsProperty where
  toResourceProperties IamIdentityCenterOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Application.IamIdentityCenterOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "IamIdentityCenterInstanceArn"
                              Prelude.<$> iamIdentityCenterInstanceArn,
                            (JSON..=) "IamRoleForIdentityCenterApplicationArn"
                              Prelude.<$> iamRoleForIdentityCenterApplicationArn])}
instance JSON.ToJSON IamIdentityCenterOptionsProperty where
  toJSON IamIdentityCenterOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "IamIdentityCenterInstanceArn"
                 Prelude.<$> iamIdentityCenterInstanceArn,
               (JSON..=) "IamRoleForIdentityCenterApplicationArn"
                 Prelude.<$> iamRoleForIdentityCenterApplicationArn]))
instance Property "Enabled" IamIdentityCenterOptionsProperty where
  type PropertyType "Enabled" IamIdentityCenterOptionsProperty = Value Prelude.Bool
  set newValue IamIdentityCenterOptionsProperty {..}
    = IamIdentityCenterOptionsProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "IamIdentityCenterInstanceArn" IamIdentityCenterOptionsProperty where
  type PropertyType "IamIdentityCenterInstanceArn" IamIdentityCenterOptionsProperty = Value Prelude.Text
  set newValue IamIdentityCenterOptionsProperty {..}
    = IamIdentityCenterOptionsProperty
        {iamIdentityCenterInstanceArn = Prelude.pure newValue, ..}
instance Property "IamRoleForIdentityCenterApplicationArn" IamIdentityCenterOptionsProperty where
  type PropertyType "IamRoleForIdentityCenterApplicationArn" IamIdentityCenterOptionsProperty = Value Prelude.Text
  set newValue IamIdentityCenterOptionsProperty {..}
    = IamIdentityCenterOptionsProperty
        {iamRoleForIdentityCenterApplicationArn = Prelude.pure newValue,
         ..}