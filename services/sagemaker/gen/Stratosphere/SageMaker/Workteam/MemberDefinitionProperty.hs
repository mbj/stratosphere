module Stratosphere.SageMaker.Workteam.MemberDefinitionProperty (
        module Exports, MemberDefinitionProperty(..),
        mkMemberDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Workteam.CognitoMemberDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Workteam.OidcMemberDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data MemberDefinitionProperty
  = MemberDefinitionProperty {cognitoMemberDefinition :: (Prelude.Maybe CognitoMemberDefinitionProperty),
                              oidcMemberDefinition :: (Prelude.Maybe OidcMemberDefinitionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemberDefinitionProperty :: MemberDefinitionProperty
mkMemberDefinitionProperty
  = MemberDefinitionProperty
      {cognitoMemberDefinition = Prelude.Nothing,
       oidcMemberDefinition = Prelude.Nothing}
instance ToResourceProperties MemberDefinitionProperty where
  toResourceProperties MemberDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Workteam.MemberDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CognitoMemberDefinition"
                              Prelude.<$> cognitoMemberDefinition,
                            (JSON..=) "OidcMemberDefinition"
                              Prelude.<$> oidcMemberDefinition])}
instance JSON.ToJSON MemberDefinitionProperty where
  toJSON MemberDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CognitoMemberDefinition"
                 Prelude.<$> cognitoMemberDefinition,
               (JSON..=) "OidcMemberDefinition"
                 Prelude.<$> oidcMemberDefinition]))
instance Property "CognitoMemberDefinition" MemberDefinitionProperty where
  type PropertyType "CognitoMemberDefinition" MemberDefinitionProperty = CognitoMemberDefinitionProperty
  set newValue MemberDefinitionProperty {..}
    = MemberDefinitionProperty
        {cognitoMemberDefinition = Prelude.pure newValue, ..}
instance Property "OidcMemberDefinition" MemberDefinitionProperty where
  type PropertyType "OidcMemberDefinition" MemberDefinitionProperty = OidcMemberDefinitionProperty
  set newValue MemberDefinitionProperty {..}
    = MemberDefinitionProperty
        {oidcMemberDefinition = Prelude.pure newValue, ..}