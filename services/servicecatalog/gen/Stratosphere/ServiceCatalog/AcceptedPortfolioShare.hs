module Stratosphere.ServiceCatalog.AcceptedPortfolioShare (
        AcceptedPortfolioShare(..), mkAcceptedPortfolioShare
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceptedPortfolioShare
  = AcceptedPortfolioShare {acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                            portfolioId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceptedPortfolioShare ::
  Value Prelude.Text -> AcceptedPortfolioShare
mkAcceptedPortfolioShare portfolioId
  = AcceptedPortfolioShare
      {portfolioId = portfolioId, acceptLanguage = Prelude.Nothing}
instance ToResourceProperties AcceptedPortfolioShare where
  toResourceProperties AcceptedPortfolioShare {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::AcceptedPortfolioShare",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortfolioId" JSON..= portfolioId]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage]))}
instance JSON.ToJSON AcceptedPortfolioShare where
  toJSON AcceptedPortfolioShare {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortfolioId" JSON..= portfolioId]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage])))
instance Property "AcceptLanguage" AcceptedPortfolioShare where
  type PropertyType "AcceptLanguage" AcceptedPortfolioShare = Value Prelude.Text
  set newValue AcceptedPortfolioShare {..}
    = AcceptedPortfolioShare
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "PortfolioId" AcceptedPortfolioShare where
  type PropertyType "PortfolioId" AcceptedPortfolioShare = Value Prelude.Text
  set newValue AcceptedPortfolioShare {..}
    = AcceptedPortfolioShare {portfolioId = newValue, ..}