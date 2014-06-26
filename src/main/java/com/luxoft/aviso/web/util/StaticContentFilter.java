package com.luxoft.aviso.web.util;

import javax.servlet.*;
import java.io.IOException;

/**
 * Passes static content serving to container's default servlet
 */
public class StaticContentFilter implements Filter {
    private static final String DEFAULT_SERVLET_NAME = "default";
    private ServletContext servletContext;

    /**
     * {@inheritDoc}
     */
    public void destroy() {
    }

    /**
     * {@inheritDoc}
     */
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        servletContext.getNamedDispatcher(DEFAULT_SERVLET_NAME).forward(req, resp);
    }

    /**
     * {@inheritDoc}
     */
    public void init(FilterConfig config) throws ServletException {
        servletContext = config.getServletContext();
    }

}
