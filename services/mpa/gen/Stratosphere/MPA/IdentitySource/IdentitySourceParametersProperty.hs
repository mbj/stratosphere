module Stratosphere.MPA.IdentitySource.IdentitySourceParametersProperty (
        module Exports, IdentitySourceParametersProperty(..),
        mkIdentitySourceParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MPA.IdentitySource.IamIdentityCenterProperty as Exports
import Stratosphere.ResourceProperties
data IdentitySourceParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-identitysource-identitysourceparameters.html>
    IdentitySourceParametersProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-identitysource-identitysourceparameters.html#cfn-mpa-identitysource-identitysourceparameters-iamidentitycenter>
                                      iamIdentityCenter :: IamIdentityCenterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentitySourceParametersProperty ::
  IamIdentityCenterProperty -> IdentitySourceParametersProperty
mkIdentitySourceParametersProperty iamIdentityCenter
  = IdentitySourceParametersProperty
      {haddock_workaround_ = (), iamIdentityCenter = iamIdentityCenter}
instance ToResourceProperties IdentitySourceParametersProperty where
  toResourceProperties IdentitySourceParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::MPA::IdentitySource.IdentitySourceParameters",
         supportsTags = Prelude.False,
         properties = ["IamIdentityCenter" JSON..= iamIdentityCenter]}
instance JSON.ToJSON IdentitySourceParametersProperty where
  toJSON IdentitySourceParametersProperty {..}
    = JSON.object ["IamIdentityCenter" JSON..= iamIdentityCenter]
instance Property "IamIdentityCenter" IdentitySourceParametersProperty where
  type PropertyType "IamIdentityCenter" IdentitySourceParametersProperty = IamIdentityCenterProperty
  set newValue IdentitySourceParametersProperty {..}
    = IdentitySourceParametersProperty
        {iamIdentityCenter = newValue, ..}